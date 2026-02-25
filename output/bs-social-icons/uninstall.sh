#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bsoft_admin_notices'
wp option delete 'bsoft_redirect_link'
wp option delete 'bsoft_redirect_name'
wp option delete 'bsoft_image_attachment_id'

