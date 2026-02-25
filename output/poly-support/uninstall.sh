#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'poly_support_active_templates'
wp option delete 'poly_support_templates'
wp option delete 'poly_support_media'

