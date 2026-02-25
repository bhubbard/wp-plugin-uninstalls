#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'santitech_dcpc_disable_comments'
wp option delete 'santitech_dcpc_disable_posts'
wp option delete 'santitech_dcpc_disable_gutenberg'
wp option delete 'santitech_dcpc_allow_svg'
wp option delete 'santitech_dcpc_allow_ico'
wp option delete 'santitech_dcpc_allow_ttf'
wp option delete 'santitech_dcpc_allow_eot'

