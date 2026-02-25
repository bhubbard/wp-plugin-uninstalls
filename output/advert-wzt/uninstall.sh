#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'advert_log'
wp option delete 'advert_guanggao'
wp option delete 'advert_db_version'
wp option delete 'advert_is_mianze'
wp option delete 'advert_wzt_token1'
wp option delete 'advert_wzt_token2'
wp option delete 'advert_wzt_token3'
wp option delete 'advert_tongji'
wp option delete 'advert_level'

