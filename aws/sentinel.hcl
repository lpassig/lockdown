module "tfplan-functions" {
  source = "../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
  source = "../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "aws-functions" {
  source = "./aws-functions/aws-functions.sentinel"
}

policy "enforce-mandatory-tags" {
  source = "./enforce-mandatory-tags.sentinel"
  enforcement_level = "mandatory"
}

policy "restrict-current-ec2-instance-type" {
  source = "./restrict-current-ec2-instance-type.sentinel"
  enforcement_level = "advisory"
}

policy "restrict-ec2-instance-type" {
  source = "./restrict-ec2-instance-type.sentinel"
  enforcement_level = "advisory"
}

policy "restrict-egress-sg-rule-cidr-blocks" {
  source = "./restrict-egress-sg-rule-cidr-blocks.sentinel"
  enforcement_level = "advisory"
}

policy "restrict-iam-policy-actions" {
  source = "./restrict-iam-policy-actions.sentinel"
  enforcement_level = "advisory"
}

policy "restrict-ingress-sg-rule-cidr-blocks" {
  source = "./restrict-ingress-sg-rule-cidr-blocks.sentinel"
  enforcement_level = "advisory"
}

policy "restrict-ingress-sg-rule-rdp" {
  source = "./restrict-ingress-sg-rule-rdp.sentinel"
  enforcement_level = "advisory"
}

policy "restrict-ingress-sg-rule-ssh" {
  source = "./restrict-ingress-sg-rule-ssh.sentinel"
  enforcement_level = "advisory"
}