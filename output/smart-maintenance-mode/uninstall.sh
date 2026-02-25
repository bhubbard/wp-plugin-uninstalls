#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smm_version'
wp option delete 'disable_smm'
wp option delete 'smm_heading'
wp option delete 'smm_subheading'
wp option delete 'smm_image'
wp option delete 'smm_roles'
wp option delete 'smm_html'
wp option delete 'smm_countdown'
wp option delete 'smm_donate_popup'

