#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpflickr_token'
wp option delete 'wpflickr_alt_title'
wp option delete 'wpflickr_nsid'

