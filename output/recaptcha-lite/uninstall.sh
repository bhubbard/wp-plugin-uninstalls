#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'grl_recaptcha_version'
wp option delete 'grl_site_key'
wp option delete 'grl_theme'
wp option delete 'grl_secret_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'grl_%'"

