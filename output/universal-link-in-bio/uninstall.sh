#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'universal_link_in_bio_enabled'
wp option delete 'universal_link_in_bio_redirect_url'

