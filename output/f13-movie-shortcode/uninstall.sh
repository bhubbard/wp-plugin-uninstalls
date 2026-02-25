#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'omdb_api_key'
wp option delete 'tmdb_api_key'
wp option delete 'f13_movie_preferred_api'

