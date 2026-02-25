#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lettermint_api_token'
wp option delete 'lettermint_from_email'
wp option delete 'lettermint_from_name'
wp option delete 'lettermint_force_email'
wp option delete 'lettermint_force_from_name'
wp option delete 'lettermint_enable_logs'
wp option delete 'lettermint_show_advanced'
wp option delete 'lettermint_route_slug'
wp option delete 'lettermint_tag'
wp option delete 'lettermint_force_html'
wp option delete 'lettermint_logs'

