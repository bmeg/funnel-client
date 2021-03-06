#!/usr/bin/env cwl-runner

cwlVersion: "draft-3"

class: CommandLineTool

description: "hash input through sha"

hints:
  - class: DockerRequirement
    dockerPull: bmeg/openssl

inputs:
  - id: input
    type: File
    description: "original content"

outputs:
  - id: output
    type: File
    outputBinding:
      glob: sha

stdout: sha

baseCommand: ["openssl", "dgst"]

arguments: ["-sha"]

