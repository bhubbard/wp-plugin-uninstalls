#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kaltura_partner_id'
wp option delete 'kaltura_secret'
wp option delete 'kaltura_admin_secret'
wp option delete 'kaltura_cms_user'
wp option delete 'kaltura_subp_id'
wp option delete 'kaltura_default_player_type'
wp option delete 'kaltura_show_media_from'
wp option delete 'kaltura_default_kcw_type'
wp option delete 'kaltura_user_identifier'
wp option delete 'kaltura_root_category'
wp option delete 'kaltura_enable_kcw'
wp option delete 'kaltura_allowed_players'

