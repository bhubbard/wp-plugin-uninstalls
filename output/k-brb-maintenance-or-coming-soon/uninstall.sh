#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'k-brb-field-on'
wp option delete 'k-brb-field-who'
wp option delete 'k-brb-field-logo'
wp option delete 'k-brb-field-title'
wp option delete 'k-brb-field-text'
wp option delete 'k-brb-field-facebook'
wp option delete 'k-brb-field-github'
wp option delete 'k-brb-field-googleplus'
wp option delete 'k-brb-field-instagram'
wp option delete 'k-brb-field-linkedin'
wp option delete 'k-brb-field-twitter'
wp option delete 'k-brb-field-youtube'
wp option delete 'k-brb-field-icons-style'
wp option delete 'k-brb-field-background-color'
wp option delete 'k-brb-field-border-color'
wp option delete 'k-brb-field-title-color'
wp option delete 'k-brb-field-text-color'
wp option delete 'k-brb-field-link-color'
wp option delete 'k-brb-field-head'
wp option delete 'k-brb-field-body'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'k-brb-field-%'"

