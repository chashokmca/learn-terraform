module "sample" {
  source = "./module"
  input  = module.dummy.dummy_op
  name = "Ashok"
}

module "dummy" {
  source = "./dummy"
}

