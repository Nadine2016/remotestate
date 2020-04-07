data "ibm_schematics_output" "vpc" {
  workspace_id = "vpc-9c76acd7-3585-41"
  template_id  = "${data.ibm_schematics_workspace.vpc.template_id.0}"
}

output "Output_vars" {
  value = "${data.ibm_schematics_output.vpc.output_values}"
}

output "sshcommand" {
  value = "${data.ibm_schematics_output.vpc.output_values.sshcommand}"
}

output "vpc_id" {
  value = "${data.ibm_schematics_output.vpc.output_values.vpc_id}"
}
