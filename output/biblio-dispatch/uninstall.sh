#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'biblio_dispatch_license_key_email'
wp option delete 'biblio_dispatch_license_key'
wp option delete 'biblio_dispatch_license_status'

