#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eadv_site_id'
wp option delete 'eadv_magic_code_id'
wp option delete 'eadv_extra_options'

