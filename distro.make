; This file describes the core project requirements for Bibdk
; patches against Drupal core and their associated issue numbers have been
; included here for reference.
;
; Use this file to build a full distribution including Drupal core (with patches) and
; the BuildKit install profile using the following command:
;
;     $ drush make dist.make [directory]
;
; In a DBC development context this command could be used to check out develop
; branches as git repositories:
;
;     $ drush make --working-copy --dbc-modules=develop --no-gitinfofile --contrib-destination=profiles/bibdk prof/dist.make [directory]

api = 2
core = 7.x

projects[drupal][type] = core

; uncomment to specify drupal version. Otherwise newest version is downloaded
projects[drupal][version] = "7.23"
projects[drupal][patch][] = http://drupal.org/files/1852888-sort-translations-by-context-2.diff
projects[drupal][patch][] = https://raw.github.com/DBCDK/patches/master/file_create_url-no_change_of_relative_url_to_absolute-all_tests.patch
projects[drupal][patch][] = https://raw.github.com/DBCDK/patches/master/drupal_http_build_query_html5_encode_brackets.patch
projects[drupal][patch][] = http://drupal.org/files/issues/autocomplete-1232416-17-7x.patch

;TODO all patches on drupal core should go here

projects[bibdk][type] = profile
projects[bibdk][download][type] = git
projects[bibdk][download][url] = git@github.com:DBCDK/bibdk.git
