#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adtaxonomies_tags_described'
wp option delete 'adtaxonomies_cats_described'
wp option delete 'adtaxonomies_tags_exclude'
wp option delete 'adtaxonomies_cats_exclude'
wp option delete 'adtaxonomies_tags_advertise'

