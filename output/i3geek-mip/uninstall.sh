#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'I3GEEK_MIP_NOTICE'

# Delete Transients
wp transient delete 'I3GEEK_MIP_UPDATE_FLAG'

