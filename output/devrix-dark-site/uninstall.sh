#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dx_redirect_to'
wp option delete 'dx_my_editor'
wp option delete 'dx_margin_top'
wp option delete 'dx-dark-site-image'
wp option delete 'dx_redirect_name'
wp option delete 'dx_editor_id'
wp option delete 'dx_margin_field_name'
wp option delete 'image_url'

