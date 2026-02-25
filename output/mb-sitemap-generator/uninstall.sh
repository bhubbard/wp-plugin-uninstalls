#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'link-checker-token'
wp option delete 'sitemap-generator-token'
wp option delete 'sitemap-generator-max-fetchers'
wp option delete 'sitemap-generator-ignore-embedded-content'
wp option delete 'sitemap-generator-reference-count-threshold'
wp option delete 'sitemap-generator-query-params-to-remove'
wp option delete 'sitemap-generator-disable-cookies'

