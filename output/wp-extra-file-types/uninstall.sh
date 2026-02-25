#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpeft_types'
wp option delete 'wpeft_custom_types'
wp option delete 'wpeft_no_strict'
wp option delete 'wpeft_no_wp'
wp option delete 'wpeft_gf_hack'

