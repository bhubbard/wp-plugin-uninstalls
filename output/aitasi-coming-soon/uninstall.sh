#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aitasi_subscriber_list'
wp option delete 'aitasi_options'

# Delete Transients
wp transient delete 'cs-framework-transient'
wp transient delete 'cs-metabox-transient'

