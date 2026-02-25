#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pesistulokset_api_key'
wp option delete 'pesistulokset_enable_transients'
wp option delete 'pesistulokset_transients_expire'

