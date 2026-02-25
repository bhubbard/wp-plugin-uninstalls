#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acf_osm_provider_tokens'
wp option delete 'acf_osm_providers'
wp option delete 'acf_osm_proxy'
wp option delete 'acf-openstreetmap-field_version'

