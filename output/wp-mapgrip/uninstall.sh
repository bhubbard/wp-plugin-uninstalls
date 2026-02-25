#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mapgrip_height'
wp option delete 'mapgrip_width'
wp option delete 'mapgrip_user_name'
wp option delete 'mapgrip_password'
wp option delete 'mapgrip_client_id'
wp option delete 'mapgrip_title'
wp option delete 'mapgrip_subtitle'
wp option delete 'mapgrip_grant_type'
wp option delete 'mapgrip_embed_url'
wp option delete 'mapgrip_secret_token'
wp option delete 'mapgrip_api_url'
wp option delete 'mapgrip_auth_token'

