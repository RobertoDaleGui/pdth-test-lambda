data "archive_file" "zip_the_node_code" {
  type        = "zip"
  source_dir  = "../src"
  output_path = "../build/build.zip"
}