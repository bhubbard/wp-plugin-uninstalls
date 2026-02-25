#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auto_attachments_cleaner_post_types'

# Delete Transients
wp transient delete 'auto_attachments_cleaner_deleted'

