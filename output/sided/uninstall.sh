#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sided_sided_initiate_script'
wp option delete 'sided_sided_embed_placement_options'
wp option delete 'sided_sided_selected_network'
wp option delete 'sided_sided_private_access_token'
wp option delete 'send_cats_to_sided'
wp option delete 'send_tags_to_sided'

