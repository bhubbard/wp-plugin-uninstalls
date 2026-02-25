#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pta-url-base'
wp option delete 'pta-use-rewrite-slug'
wp option delete 'pta-title'
wp option delete 'pta-template-pattern'
wp option delete 'pta-fallback-template'
wp option delete 'pta-enable-feed-links'
wp option delete 'pta-enabled-post-type-archives'
wp option delete 'pta-enabled-post-type-customisations'

