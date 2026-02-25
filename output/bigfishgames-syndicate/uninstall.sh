#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bigfishgames_syndicate_interval'
wp option delete 'bigfishgames_syndicate_wh_checked'
wp option delete 'bigfishgames_syndicate_last_posts'
wp option delete 'bigfishgames_syndicate_aff_code'
wp option delete 'bigfishgames_syndicate_template'
wp option delete 'bigfishgames_syndicate_title_prefix'
wp option delete 'bigfishgames_syndicate_title_suffix'
wp option delete 'bigfishgames_syndicate_pc_en'
wp option delete 'bigfishgames_syndicate_pc_de'
wp option delete 'bigfishgames_syndicate_pc_fr'
wp option delete 'bigfishgames_syndicate_pc_es'
wp option delete 'bigfishgames_syndicate_mac_en'
wp option delete 'bigfishgames_syndicate_allow_pings'
wp option delete 'bigfishgames_syndicate_allow_comments'

