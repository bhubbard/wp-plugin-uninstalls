#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_nasaads_query_importer-token'
wp option delete 'wp_nasaads_query_importer-template'
wp option delete 'wp_nasaads_query_importer-template_start'
wp option delete 'wp_nasaads_query_importer-template_stop'
wp option delete 'wp_nasaads_query_importer-numrecords'
wp option delete 'wp_nasaads_query_importer-empty_list'
wp option delete 'wp_nasaads_query_importer-acknowledge'
wp option delete 'wp_nasaads_query_importer-valid_token'

