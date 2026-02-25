#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'age_verification_logo'
wp option delete 'age_verification_yes_button_color'
wp option delete 'age_verification_no_button_color'
wp option delete 'age_verification_min_age'

