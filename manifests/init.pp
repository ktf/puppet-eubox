class eubox ($dev_puppet_modules = [],
             $dev_puppet_path) {
  define create_modules($repo = $title,
                        $path = $dev_puppet_path) {
    $basename = basename($repo)
    repository {"$path/$basename":
      source => $repo
    }
  }

  eubox::create_modules{$dev_puppet_modules:
    path => $dev_puppet_path
  }
}
