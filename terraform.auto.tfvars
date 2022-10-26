
aws_account_id = "777777777777"
target_stage   = "devtest"
k8s_version    = "1.23"
provider_token = ""

aws_auth_roles = [{
  rolearn  = "arn:aws:iam::777777777777:role/AWSReservedSSO_AWS-Org"
  username = "kubernetes-admin"
  groups   = ["system:masters"]
},
{
  rolearn  = "arn:aws:iam::777777777777:role/devtest-fargate-role"
  username = "system:node:{{EC2PrivateDNSName}}"
  groups   = ["system:bootstrappers","system:nodes"]
},
{
  rolearn  = "arn:aws:iam::777777777777:role/devtest-fargate-role"
  username = "system:node:{{SessionName}}"
  groups   = ["system:bootstrappers","system:nodes","system:node-proxier"]
},
{
  rolearn  = "arn:aws:iam::777777777777:role/devtest-fargate-role"
  username = "kubernetes-admin"
  groups   = ["system:masters"]
}
]

aws_auth_users = [{
  userarn  = "arn:aws:iam::777777777777:user/ado-buildpipeline-devtest-serviceaccount"
  username = "system:node:{{SessionName}}"
  groups   = ["system:masters"]
}]
