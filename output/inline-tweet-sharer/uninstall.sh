#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'inline-tweet-sharer-bitlyapikey'
wp option delete 'inline-tweet-sharer-bitlyusername'
wp option delete 'inline-tweet-sharer-default'
wp option delete 'inline-tweet-sharer-removespaces'
wp option delete 'inline-tweet-sharer-bitly'
wp option delete 'inline-tweet-sharer-urlshortened'
wp option delete 'inline-tweet-sharer-usedefault'
wp option delete 'inline-tweet-sharer-dprefix'
wp option delete 'inline-tweet-sharer-dsuffix'
wp option delete 'inline-tweet-sharer-bypassutfdecode'
wp option delete 'inline-tweet-sharer-capitalise'
wp option delete 'inline-tweet-sharer-extraclass'
wp option delete 'inline-tweet-sharer-marker'
wp option delete 'inline-tweet-sharer-dashicons'
wp option delete 'inline-tweet-sharer-disable-stylesheets'

# Delete Transients
wp transient delete 'its_group_id'

