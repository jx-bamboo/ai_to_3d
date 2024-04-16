# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"

# customer
# pin "bootstrap", to: "bootstrap-5.3.3/package/dist/js/bootstrap.esm.js"
# pin "@popperjs/core", to: "core-2.11.8/package/dist/esm/index.js"
#
pin "bootstrap", to: "https://unpkg.com/bootstrap@5.3.2/dist/js/bootstrap.esm.js"
pin "@popperjs/core", to: "https://unpkg.com/@popperjs/core@2.11.8/dist/esm/index.js"
