// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "bootstrap"
import { Tooltip, Popover } from "bootstrap"


require("../stylesheets/application.scss")
require("@popperjs/core")
require("jquery")
Rails.start()
Turbolinks.start()
ActiveStorage.start()

tsParticles.load("tsparticles", {
    fpsLimit: 60,
    particles: {
      color: {
        value: ["#E3F8FF", "#28CC9E", "#A6ED8E"]
      },
      move: {
        enable: true,
        direction: "top-right",
        random: true,
        speed: 1.5
      },
      number: {
        value: 50
      },
      opacity: {
        value: 0.6,
        random: {
          enable: true,
          minimumValue: 0.3
        }
      },
      shape: {
        type: ["square", "circle"]
      },
      size: {
        value: 2
      }
    }
  });
  



