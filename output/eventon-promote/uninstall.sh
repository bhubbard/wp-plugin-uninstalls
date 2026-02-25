#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mmt_promote_popup_options'
wp option delete 'mmt_promote_slidein_options'
wp option delete 'evo_promote_embed_options'
wp option delete 'evcal_options_evcal_promote'
wp option delete 'evcal_options_evcal_1'
wp option delete 'evcal_options_evcal_2'
wp option delete 'evo_tax_meta'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_%'"

