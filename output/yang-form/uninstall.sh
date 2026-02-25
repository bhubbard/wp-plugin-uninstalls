#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yangform_sites'
wp option delete 'yangform_options'
wp option delete 'yangform_template_style'
wp option delete 'yangform_template'

