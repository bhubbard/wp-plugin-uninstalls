#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smmg_iframeWidth'
wp option delete 'smmg_iframeHeight'
wp option delete 'smmg_descriptionCustomField'
wp option delete 'smmg_thumbnailCustomField'
wp option delete 'smmg_durationCustomField'
wp option delete 'smmg_directorCustomField'
wp option delete 'smmg_writerCustomField'
wp option delete 'smmg_starsCustomField'
wp option delete 'smmg_ratingCustomField'
wp option delete 'smmg_genreCustomField'
wp option delete 'smmg_countryCustomField'
wp option delete 'smmg_nextpageCustomField'

