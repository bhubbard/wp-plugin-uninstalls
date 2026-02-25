#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'email-log-core'
wp option delete 'email-log-db'
wp option delete 'el_mask_fields'
wp option delete 'el_bundle_license'

