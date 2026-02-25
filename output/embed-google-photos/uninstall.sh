#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bpgpb-google-photos'
wp option delete 'bpgpb_auth_info'

# Delete Transients
wp transient delete 'bpgpb_expireTime'

