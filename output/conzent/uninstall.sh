#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'conzent_verified'
wp option delete 'conzent_website_key'
wp option delete 'conzent_site_domain'
wp option delete 'conzent_error'
wp option delete 'conzent_db_version'
wp option delete 'conzent_plugin_error'
wp option delete 'conzent_site_name'
wp option delete 'conzent_site_status'
wp option delete 'conzent_site_id'
wp option delete 'conzent-gtm-id'
wp option delete 'conzent-data-layer'

