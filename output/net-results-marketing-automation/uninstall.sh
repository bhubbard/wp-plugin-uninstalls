#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nr_ps_id'
wp option delete 'nr_access_token'
wp option delete 'nr_client_id'
wp option delete 'nr_client_secret'

