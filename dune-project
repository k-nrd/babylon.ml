(lang dune 3.8)

(using melange 0.1)

(name ocaml_babylonjs)

(using directory-targets 0.1)

(generate_opam_files true)

(license "MIT")

(maintainers <your_name>)

(authors <your_name>)

(homepage https://github.com/your/project)

(bug_reports https://github.com/your/project/issues)

(package
 (allow_empty)
 (name ocaml_babylonjs)
 (synopsis "Melange project")
 (description "Minimal melange project")
 (depends
   ocaml 
   dune 
   melange))
