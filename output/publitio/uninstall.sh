#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'publitio_default_player_id'
wp option delete 'publitio_key'
wp option delete 'publitio_secret'

# Delete Transients
wp transient delete 'publitio_wordpress_data'
wp transient delete 'publitio_players'

