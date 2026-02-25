#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rs_para_ids_enabled'
wp option delete 'rs_para_id_prefix'
wp option delete 'rs_anchor_enabled'
wp option delete 'rs_anchor_prefix'
wp option delete 'rs_styling_enabled'

