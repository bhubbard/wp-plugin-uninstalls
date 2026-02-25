#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zutalw_game_title'
wp option delete 'zutalw_popup_delay'
wp option delete 'zutalw_max_spins'
wp option delete 'zutalw_reset_days'
wp option delete 'zutalw_recaptcha_site_key'
wp option delete 'zutalw_recaptcha_secret_key'

