#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ESSITCO_esscaptcha_solution_status'
wp option delete 'ESSITCO_captcha_solution_attempts'

