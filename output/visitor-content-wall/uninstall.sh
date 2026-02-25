#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vcw-bgcolor'
wp option delete 'vcw-txtcolor'
wp option delete 'vcw-msg'
wp option delete 'vcw-animation-type'
wp option delete 'vcw-bgc'

# Delete Transients
wp transient delete 'vcw_success'

