#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'testimonials_openai_validate'
wp option delete 'elementor_experiment-e_swiper_latest'
wp option delete 'elementor_openai_api_key'

