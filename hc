{
  "torrentapi": {
    "name": "RARBG",
    "enabled": true,
    "languages": [
      "en"
    ],
    "base_url": "https://torrentapi.org",
    "fallback_urls": [],
    "time_to_wait_between_each_request_ms": 300,
    "time_to_wait_on_too_many_request_ms": 2000,
    "response_type": "json",
    "token": {
      "query": "/pubapi_v2.php?get_token=get_token&app_id=helios",
      "token_validity_time_ms": 840000,
      "token_format": {
        "token": "token"
      }
    },
    "movie": {
      "query": "/pubapi_v2.php?mode=search&search_imdb={query}&category=movies&format=json_extended&app_id=helios&token={token}",
      "keywords": "{imdbId}"
    },
    "episode": {
      "query": "/pubapi_v2.php?mode=search&search_string={query}&category=tv&format=json_extended&app_id=helios&token={token}",
      "keywords": [
        "{title} {episodeCode}",
        "{title} {year} {episodeCode}"
      ]
    },
    "season": {
      "query": "/pubapi_v2.php?mode=search&search_string={query}&category=tv&format=json_extended&app_id=helios&token={token}",
      "keywords": [
        "{title} {seasonCode}",
        "{title} season",
        "{title} {year} {seasonCode}",
        "{title} {year} season"
      ]
    },
    "json_format": {
      "results": "torrent_results",
      "url": "download",
      "title": "title",
      "seeds": "seeders",
      "peers": "leechers",
      "size": "size"
    },
    "title_replacement": {
      ".": "",
      ":": "",
      "'": "",
      "&": "",
      "\"": "",
      "*": ""
    },
    "trust_results": true,
    "original_package": "SynclerScrapers - OpenScrapers"
  },
  "bitlord": {
    "name": "Bitlord",
    "enabled": true,
    "languages": [
      "en"
    ],
    "base_url": "https://bitlordsearch.com",
    "response_type": "text",
    "movie": {
      "query": "/search?q={query}",
      "keywords": "{title} {year}"
    },
    "episode": {
      "query": "/search?q={query}",
      "keywords": [
        "{title} {episodeCode}",
        "{title} {year} {episodeCode}"
      ]
    },
    "season": {
      "query": "/search?q={query}",
      "keywords": [
        "{title} {seasonCode}",
        "{title} season",
        "{title} {year} {seasonCode}",
        "{title} {year} season"
      ]
    },
    "anime": {
      "query": "/search?q={query}",
      "keywords": [
        "{title} {absoluteNumber}",
        "{title} {episode}"
      ]
    },
    "html_parser": {
      "row": "doc.querySelectorAll('#container table tbody tr.bls-row')",
      "title": "row.querySelector('.title').textContent",
      "peers": "row.querySelector('.peers').textContent",
      "seeds": "row.querySelector('.seeds').textContent",
      "size": "(row.querySelector('.size').textContent < 120 ? row.querySelector('.size').textContent * 1024 : (row.querySelector('.size').textContent > 122880 ? row.querySelector('.size').textContent / 1204  : row.querySelector('.size').textContent))+' MB'",
      "url": "row.querySelector('.magnet-button').getAttribute('href')"
    },
    "title_replacement": {
      ".": "",
      ":": "",
      "'": "",
      "&": "",
      "\"": "",
      "*": ""
    },
    "source_is_in_sub_page": false,
    "original_package": "SynclerScrapers - OpenScrapers"
  },
  "extratorrents": {
    "name": "ExtraTorrent",
    "enabled": true,
    "languages": [
      "en"
    ],
    "base_url": "https://extratorrent.st",
    "fallback_urls": [
      "https://extratorrent2.unblockninja.com",
      "https://extratorrent.unblocked.nz",
      "https://extra.torrentbay.to"
    ],
    "response_type": "text",
    "movie": {
      "query": "/search/?search={query}&new=1&x=0&y=0",
      "keywords": "{title} {year}"
    },
    "episode": {
      "query": "/search/?search={query}&new=1&x=0&y=0",
      "keywords": [
        "{title} {episodeCode}",
        "{title} {year} {episodeCode}"
      ]
    },
    "season": {
      "query": "/search/?search={query}&new=1&x=0&y=0",
      "keywords": [
        "{title} {seasonCode}",
        "{title} season",
        "{title} {year} {seasonCode}",
        "{title} {year} season"
      ]
    },
    "anime": {
      "query": "/search/?search={query}&new=1&x=0&y=0",
      "keywords": [
        "{title} {absoluteNumber}",
        "{title} {episode}"
      ]
    },
    "html_parser": {
      "row": "doc.querySelectorAll('table.tl tbody tr')",
      "title": "row.querySelector('td.tli > a').textContent",
      "peers": "row.querySelector('td:nth-child(7)').textContent",
      "seeds": "row.querySelector('td:nth-child(6)').textContent",
      "size": "row.querySelector('td:nth-child(5)').textContent",
      "url": "row.querySelector('table.tl td:nth-child(1) > a').getAttribute('href')"
    },
    "title_replacement": {
      ".": "",
      ":": "",
      "'": "",
      "&": "",
      "\"": "",
      "*": ""
    },
    "source_is_in_sub_page": false,
    "original_package": "SynclerScrapers - OpenScrapers"
  },
  "yts": {
    "name": "YTS",
    "enabled": true,
    "languages": [
      "en"
    ],
    "base_url": "https://yts.mx",
    "fallback_urls": [
      "https://yts.pm",
      "https://yts.unblocked.lat"
    ],
    "response_type": "json",
    "movie": {
      "query": "/api/v2/list_movies.json?query_term={query}&sort_by=seeds&order_by=desc",
      "keywords": "{imdbId}"
    },
    "json_format": {
      "results": "data.movies",
      "sub_results": "torrents",
      "url": "magnet:?xt=urn:btih:{hash}&tr=http://track.one:1234/announce&tr=udp://track.two:80",
      "title": "title_long",
      "seeds": "seeds",
      "peers": "peers",
      "size": "size",
      "quality": "quality",
      "hash": "hash"
    },
    "title_replacement": {
      ".": "",
      ":": "",
      "'": "",
      "&": "",
      "\"": "",
      "*": ""
    },
    "trust_results": true,
    "original_package": "SynclerScrapers - OpenScrapers"
  },
  "zooqle": {
    "name": "Zooqle",
    "enabled": true,
    "languages": [
      "en"
    ],
    "base_url": "https://zooqle.com",
    "fallback_urls": [
      "https://zooqle.t0r.club",
      "https://zooqle-com.unblocksites.fun",
      "https://zooqle.unblocked.win",
      "https://zooqle.nocensor.xyz",
      "https://zooqle.unblocked.llc",
      "https://zooqle.unblocked.krd",
      "https://zooqle.p4y.info"
    ],
    "response_type": "text",
    "separator": "+",
    "movie": {
      "query": "/search?q={query}",
      "keywords": "{title} {year}"
    },
    "episode": {
      "query": "/search?q={query}",
      "keywords": [
        "{title} {episodeCode}",
        "{title} {year} {episodeCode}"
      ]
    },
    "season": {
      "query": "/search?q={query}",
      "keywords": [
        "{title} {seasonCode}",
        "{title} season",
        "{title} {year} {seasonCode}",
        "{title} {year} season"
      ]
    },
    "anime": {
      "query": "/search?q={query}",
      "keywords": [
        "{title} {absoluteNumber}",
        "{title} {episode}"
      ]
    },
    "html_parser": {
      "row": "doc.querySelectorAll('.table-torrents tbody tr')",
      "title": "row.querySelector('td:nth-child(2) a').textContent",
      "peers": "row.querySelector('td:nth-child(6) .progress-bar:nth-child(2)') ? row.querySelector('td:nth-child(6) .prog-r').textContent : 0",
      "seeds": "row.querySelector('td:nth-child(6) .progress-bar:nth-child(1)') ? row.querySelector('td:nth-child(6) .prog-l').textContent : 0",
      "size": "row.querySelector('td:nth-child(4) .progress-bar').textContent.replace('K','000')",
      "url": "row.querySelector('td:nth-child(3) li:nth-child(2) a').getAttribute('href')"
    },
    "title_replacement": {
      ".": "",
      ":": "",
      "'": "",
      "&": "",
      "\"": "",
      "*": ""
    },
    "source_is_in_sub_page": false,
    "original_package": "SynclerScrapers - OpenScrapers"
  },
  "thepiratebay": {
    "name": "PirateBay",
    "enabled": true,
    "languages": [
      "en"
    ],
    "base_url": "https://apibay.org",
    "fallback_urls": [],
    "response_type": "json",
    "movie": {
      "query": "/q.php?q={query}&cat=207,202,201",
      "keywords": "{title} {year}"
    },
    "episode": {
      "query": "/q.php?q={query}&cat=208,205",
      "keywords": [
        "{title} {episodeCode}",
        "{title} {year} {episodeCode}"
      ]
    },
    "season": {
      "query": "/q.php?q={query}&cat=208,205",
      "keywords": [
        "{title} {seasonCode}",
        "{title} season",
        "{title} {year} {seasonCode}",
        "{title} {year} season"
      ]
    },
    "anime": {
      "query": "/q.php?q={query}&cat=208,205",
      "keywords": [
        "{title} {absoluteNumber}",
        "{title} {episode}"
      ]
    },
    "json_format": {
      "title": "name",
      "seeds": "seeders",
      "peers": "leechers",
      "size": "size",
      "hash": "info_hash"
    },
    "title_replacement": {
      ".": "",
      ":": "",
      "'": "",
      "&": "",
      "\"": "",
      "*": ""
    },
    "original_package": "SynclerScrapers - OpenScrapers"
  },
  "torrentdownload": {
    "name": "TorrentDownload",
    "enabled": true,
    "languages": [
      "en"
    ],
    "base_url": "https://www.torrentdownload.info",
    "response_type": "text",
    "separator": "+",
    "movie": {
      "query": "/search?q={query}",
      "keywords": "{title} {year}"
    },
    "episode": {
      "query": "/search?q={query}",
      "keywords": [
        "{title} {episodeCode}",
        "{title} {year} {episodeCode}"
      ]
    },
    "season": {
      "query": "/search?q={query}",
      "keywords": [
        "{title} {seasonCode}",
        "{title} season",
        "{title} {year} {seasonCode}",
        "{title} {year} season"
      ]
    },
    "anime": {
      "query": "/search?q={query}",
      "keywords": [
        "{title} {absoluteNumber}",
        "{title} {episode}"
      ]
    },
    "html_parser": {
      "row": "doc.querySelectorAll('table:nth-of-type(2) tbody tr:not(:first-child)')",
      "title": "row.querySelector('.tt-name a').textContent",
      "peers": "row.querySelector('.tdleech').textContent.replace(',','')",
      "seeds": "row.querySelector('.tdseed').textContent.replace(',','')",
      "size": "row.querySelector('.tdnormal:nth-of-type(3)').textContent",
      "url": "row.querySelector('.tt-name a').getAttribute('href')"
    },
    "title_replacement": {
      ".": "",
      ":": "",
      "'": "",
      "&": "",
      "\"": "",
      "*": ""
    },
    "source_is_in_sub_page": true,
    "original_package": "SynclerScrapers - OpenScrapers"
  },
  "anirena": {
    "name": "AniRena",
    "enabled": true,
    "languages": [
      "en"
    ],
    "base_url": "https://www.anirena.com",
    "response_type": "text",
    "separator": "+",
    "movie": {
      "query": "/?s={query}",
      "keywords": "{title}"
    },
    "episode": {
      "query": "/?s={query}",
      "keywords": [
        "{title} {absoluteNumber}",
        "{title} {episode}"
      ]
    },
    "season": {
      "query": "/?s={query}",
      "keywords": [
        "{title} {seasonCode}",
        "{title} season"
      ]
    },
    "anime": {
      "query": "/?s={query}",
      "keywords": [
        "{title} {absoluteNumber}",
        "{title} {episode}"
      ]
    },
    "html_parser": {
      "row": "doc.querySelectorAll('div.full2')",
      "title": "row.querySelector('table tbody tr .torrents_small_info_data1 a:nth-child(2)').textContent",
      "peers": "row.querySelector('table tbody tr .torrents_small_leechers_data1').textContent",
      "seeds": "row.querySelector('table tbody tr .torrents_small_seeders_data1').textContent",
      "size": "row.querySelector('table tbody tr .torrents_small_size_data1').textContent",
      "url": "row.querySelector('table tbody tr .torrents_small_info_data2 a:nth-child(2)').getAttribute('href')"
    },
    "title_replacement": {
      ".": "",
      ":": "",
      "'": "",
      "&": "",
      "\"": "",
      "*": ""
    },
    "source_is_in_sub_page": false,
    "original_package": "SynclerScrapers - OpenScrapers"
  },
  "torrentdownloads": {
    "name": "TorrentDownloads",
    "enabled": true,
    "languages": [
      "en"
    ],
    "base_url": "https://www.torrentdownloads.me",
    "fallback_urls": [
      "https://www.torrentdownloads.info",
      "http://torrentdownloads.d4.re"
    ],
    "response_type": "text",
    "separator": "+",
    "movie": {
      "query": "/search/?search={query}",
      "keywords": "{title} {year}"
    },
    "episode": {
      "query": "/search/?search={query}",
      "keywords": [
        "{title} {episodeCode}",
        "{title} {year} {episodeCode}"
      ]
    },
    "season": {
      "query": "/search/?search={query}",
      "keywords": [
        "{title} {seasonCode}",
        "{title} season",
        "{title} {year} {seasonCode}",
        "{title} {year} season"
      ]
    },
    "anime": {
      "query": "/search/?search={query}",
      "keywords": [
        "{title} {absoluteNumber}",
        "{title} {episode}"
      ]
    },
    "html_parser": {
      "row": "doc.querySelectorAll('.inner_container')[1].querySelectorAll('.grey_bar3')",
      "title": "row.querySelector('p a').textContent",
      "peers": "row.querySelector('span:nth-child(3)').textContent",
      "seeds": "row.querySelector('span:nth-child(4)').textContent",
      "size": "row.querySelector('span:nth-child(5)').textContent",
      "url": "row.querySelector('p a').getAttribute('href').match('http') || row.querySelector('p a').getAttribute('href').match('php') ? null : row.querySelector('p a').getAttribute('href')"
    },
    "title_replacement": {
      ".": "",
      ":": "",
      "'": "",
      "&": "",
      "\"": "",
      "*": ""
    },
    "source_is_in_sub_page": true,
    "original_package": "SynclerScrapers - OpenScrapers"
  },
  "kickass": {
    "name": "Kickass",
    "enabled": true,
    "languages": [
      "en"
    ],
    "base_url": "https://kickass-kat.com",
    "fallback_urls": [
      "https://kickass.vc",
      "https://kat.how",
      "https://kat.li",
      "https://kickass.cm",
      "https://kickass2.st",
      "https://kat.sx",
      "https://thekat.info"
    ],
    "response_type": "text",
    "separator": "%20",
    "movie": {
      "query": "/usearch/{query}/?field=seeders&sorder=desc",
      "keywords": "{title} {year}"
    },
    "episode": {
      "query": "/usearch/{query}/?field=seeders&sorder=desc",
      "keywords": [
        "{title} {episodeCode}",
        "{title} {year} {episodeCode}"
      ]
    },
    "season": {
      "query": "/usearch/{query}/?field=seeders&sorder=desc",
      "keywords": [
        "{title} {seasonCode}",
        "{title} season",
        "{title} {year} {seasonCode}",
        "{title} {year} season"
      ]
    },
    "anime": {
      "query": "/usearch/{query}/?field=seeders&sorder=desc",
      "keywords": [
        "{title} {absoluteNumber}",
        "{title} {episode}"
      ]
    },
    "html_parser": {
      "row": "doc.querySelectorAll('.data tbody tr:not(.firstr)')",
      "title": "row.querySelector('td:nth-child(1) .torrentname .torType a').textContent",
      "peers": "row.querySelectorAll('.green').textContent",
      "seeds": "row.querySelectorAll('.red').textContent",
      "size": "row.querySelector('.nobr').textContent",
      "url": "decodeURIComponent(row.querySelector('td:nth-child(1) div:nth-child(1) a:nth-last-child(2)').getAttribute('href').replace('https://mylink.cx/?url=', '').trim())"
    },
    "title_replacement": {
      ".": "",
      ":": "",
      "'": "",
      "&": "",
      "\"": "",
      "*": ""
    },
    "source_is_in_sub_page": false,
    "original_package": "SynclerScrapers - OpenScrapers"
  },
  "torrentgalaxy": {
    "name": "TorrentGalaxy",
    "enabled": true,
    "languages": [
      "en"
    ],
    "base_url": "https://torrentgalaxy.to",
    "fallback_urls": [
      "https://torrentgalaxy.mx",
      "https://torrentgalaxy.su",
      "https://torrentgalaxy.unblockit.uno"
    ],
    "response_type": "text",
    "separator": "+",
    "movie": {
      "query": "/torrents.php?search={query}",
      "keywords": "{title} {year}"
    },
    "episode": {
      "query": "/torrents.php?search={query}",
      "keywords": [
        "{title} {episodeCode}",
        "{title} {year} {episodeCode}"
      ]
    },
    "season": {
      "query": "/torrents.php?search={query}",
      "keywords": [
        "{title} {seasonCode}",
        "{title} season",
        "{title} {year} {seasonCode}",
        "{title} {year} season"
      ]
    },
    "anime": {
      "query": "/torrents.php?search={query}",
      "keywords": [
        "{title} {absoluteNumber}",
        "{title} {episode}"
      ]
    },
    "html_parser": {
      "row": "doc.querySelectorAll('.tgxtable .tgxtablerow')",
      "title": "row.querySelector('.tgxtablecell:nth-child(4) a:nth-child(1)').getAttribute('title')",
      "peers": "row.querySelector('.tgxtablecell:nth-child(11) span font:nth-child(2)').textContent",
      "seeds": "row.querySelector('.tgxtablecell:nth-child(11) span font:nth-child(1)').textContent",
      "size": "row.querySelector('.tgxtablecell:nth-child(8)').textContent",
      "url": "row.querySelector('.tgxtablecell:nth-child(5) a:nth-child(2)').getAttribute('href')"
    },
    "title_replacement": {
      ".": "",
      ":": "",
      "'": "",
      "&": "",
      "\"": "",
      "*": ""
    },
    "source_is_in_sub_page": false,
    "original_package": "SynclerScrapers - OpenScrapers"
  },
  "eztv": {
    "name": "EZTV",
    "enabled": true,
    "languages": [
      "en"
    ],
    "base_url": "https://eztv.re",
    "fallback_urls": [
      "https://eztv.ag",
      "https://eztv.it",
      "https://eztv.ch",
      "https://eztv.unblockit.uno"
    ],
    "response_type": "text",
    "episode": {
      "query": "/search/{query}",
      "keywords": [
        "{title} {episodeCode}",
        "{title} {year} {episodeCode}"
      ]
    },
    "season": {
      "query": "/search/{query}",
      "keywords": [
        "{title} {seasonCode}",
        "{title} season",
        "{title} {year} {seasonCode}",
        "{title} {year} season"
      ]
    },
    "html_parser": {
      "row": "doc.querySelectorAll('tr.forum_header_border')",
      "title": "row.querySelector('td:nth-child(2)').textContent",
      "peers": "row.querySelector('td:nth-child(6)').textContent",
      "seeds": "row.querySelector('td:nth-child(6)').textContent",
      "size": "row.querySelector('td:nth-child(4)').textContent",
      "url": "row.querySelector('td:nth-child(3) a').getAttribute('href')"
    },
    "title_replacement": {
      ".": "",
      ":": "",
      "'": "",
      "&": "",
      "\"": "",
      "*": ""
    },
    "source_is_in_sub_page": false,
    "original_package": "SynclerScrapers - OpenScrapers"
  },
  "skytorrents": {
    "name": "SkyTorrents",
    "enabled": true,
    "languages": [
      "en"
    ],
    "base_url": "https://www.skytorrents.me",
    "fallback_urls": [],
    "response_type": "text",
    "separator": "+",
    "movie": {
      "query": "/search?q={query}",
      "keywords": "{title} {year}"
    },
    "episode": {
      "query": "/search?q={query}",
      "keywords": [
        "{title} {episodeCode}",
        "{title} {year} {episodeCode}"
      ]
    },
    "season": {
      "query": "/search?q={query}",
      "keywords": [
        "{title} {seasonCode}",
        "{title} season",
        "{title} {year} {seasonCode}",
        "{title} {year} season"
      ]
    },
    "anime": {
      "query": "/search?q={query}",
      "keywords": [
        "{title} {absoluteNumber}",
        "{title} {episode}"
      ]
    },
    "html_parser": {
      "row": "doc.querySelectorAll('.rtable tbody tr.row')",
      "title": "row.querySelector('td:nth-child(1) a').textContent",
      "peers": "row.querySelector('td:nth-child(5)').textContent",
      "seeds": "row.querySelector('td:nth-child(4)').textContent",
      "size": "row.querySelector('td:nth-child(2)').textContent",
      "url": "row.querySelector('td:nth-child(6) a').getAttribute('href')"
    },
    "title_replacement": {
      ".": "",
      ":": "",
      "'": "",
      "&": "",
      "\"": "",
      "*": ""
    },
    "source_is_in_sub_page": false,
    "original_package": "SynclerScrapers - OpenScrapers"
  },
  "glodls": {
    "name": "Glodls",
    "enabled": true,
    "languages": [
      "en"
    ],
    "base_url": "https://glodls.to",
    "fallback_urls": [
      "https://gtdb.to",
      "https://glotorrents.unblockit.uno"
    ],
    "response_type": "text",
    "separator": "+",
    "movie": {
      "query": "/search_results.php?search={query}&cat=1&incldead=0&inclexternal=0&lang=1&sort=size&order=desc",
      "keywords": "{title} {year}"
    },
    "episode": {
      "query": "/search_results.php?search={query}&cat=41&incldead=0&inclexternal=0&lang=1&sort=seeders&order=desc",
      "keywords": [
        "{title} {episodeCode}",
        "{title} {year} {episodeCode}"
      ]
    },
    "season": {
      "query": "/search_results.php?search={query}&cat=41&incldead=0&inclexternal=0&lang=1&sort=seeders&order=desc",
      "keywords": [
        "{title} {seasonCode}",
        "{title} season",
        "{title} {year} {seasonCode}",
        "{title} {year} season"
      ]
    },
    "html_parser": {
      "row": "doc.querySelectorAll('table.ttable_headinner tbody tr.t-row:nth-child(odd)')",
      "title": "row.querySelector('td:nth-child(2) a:nth-child(2)').textContent",
      "peers": "row.querySelector('td:nth-child(7)').textContent",
      "seeds": "row.querySelector('td:nth-child(6)').textContent",
      "size": "row.querySelector('td:nth-child(5)').textContent",
      "url": "row.querySelector('td:nth-child(4) a').getAttribute('href')"
    },
    "title_replacement": {
      ".": "",
      ":": "",
      "'": "",
      "&": "",
      "\"": "",
      "*": ""
    },
    "source_is_in_sub_page": false,
    "original_package": "SynclerScrapers - OpenScrapers"
  },
  "magnetdl": {
    "name": "MagnetDL",
    "enabled": true,
    "languages": [
      "en"
    ],
    "base_url": "https://www.magnetdl.com",
    "fallback_urls": [
      "https://magnetdl.unblockit.uno",
      "https://torrentquest.com"
    ],
    "response_type": "text",
    "separator": "-",
    "movie": {
      "query": "/{titleFirstLetter}/{query}/",
      "keywords": "{title} {year}"
    },
    "episode": {
      "query": "/{titleFirstLetter}/{query}/",
      "keywords": [
        "{title} {episodeCode}",
        "{title} {year} {episodeCode}"
      ]
    },
    "season": {
      "query": "/{titleFirstLetter}/{query}/",
      "keywords": [
        "{title} {seasonCode}",
        "{title} season",
        "{title} {year} {seasonCode}",
        "{title} {year} season"
      ]
    },
    "html_parser": {
      "row": "doc.querySelectorAll('table.download tbody tr:nth-child(odd)')",
      "title": "row.querySelector('td:nth-child(2) a') ? row.querySelector('td:nth-child(2) a').getAttribute('title') : ''",
      "peers": "row.querySelector('td:nth-child(8)') ? row.querySelector('td:nth-child(8)').textContent : ''",
      "seeds": "row.querySelector('td:nth-child(7)') ? row.querySelector('td:nth-child(7)').textContent : ''",
      "size": "row.querySelector('td:nth-child(6)') ? row.querySelector('td:nth-child(6)').textContent.replace(',','') : ''",
      "url": "row.querySelector('td:nth-child(1) a') ? row.querySelector('td:nth-child(1) a').getAttribute('href') : ''"
    },
    "title_replacement": {
      ".": "",
      ":": "",
      "'": "",
      "&": "",
      "\"": "",
      "*": ""
    },
    "source_is_in_sub_page": false,
    "original_package": "SynclerScrapers - OpenScrapers"
  },
  "rutor": {
    "name": "RuTor",
    "enabled": true,
    "languages": [
      "ru"
    ],
    "base_url": "http://rutor.info",
    "response_type": "text",
    "movie": {
      "query": "/search/{query}",
      "keywords": "{title} {year}"
    },
    "episode": {
      "query": "/search/{query}",
      "keywords": [
        "{title} {episodeCode}",
        "{title} {year} {episodeCode}"
      ]
    },
    "html_parser": {
      "row": "doc.querySelectorAll('tbody tr')",
      "title": "row.querySelector('td:nth-child(2)').innerText",
      "peers": "row.querySelector('td:nth-last-child(1) span.green').innerText",
      "seeds": "row.querySelector('td:nth-last-child(1) span.red').innerText",
      "size": "row.querySelector('td:nth-last-child(2)').innerText",
      "url": "row.querySelector('td:nth-child(2) a:nth-child(2)').getAttribute('href')"
    },
    "source_is_in_sub_page": false,
    "original_package": "SynclerScrapers - OpenScrapers"
  },
  "nyaa": {
    "name": "Nyaa",
    "enabled": true,
    "languages": [
      "en"
    ],
    "base_url": "https://nyaa.si",
    "fallback_urls": [],
    "response_type": "text",
    "separator": "+",
    "movie": {
      "query": "/?f=0&c=0_0&q={query}&s=seeders&o=desc",
      "keywords": "{title} {year}"
    },
    "episode": {
      "query": "/?f=0&c=0_0&q={query}&s=seeders&o=desc",
      "keywords": "{title} {absoluteNumber}"
    },
    "season": {
      "query": "/?f=0&c=0_0&q={query}&s=seeders&o=desc",
      "keywords": [
        "{title} {seasonCode}",
        "{title} season"
      ]
    },
    "anime": {
      "query": "/?f=0&c=1_0&q={query}&s=seeders&o=desc",
      "keywords": [
        "{title} {absoluteNumber}",
        "{title} {episode}"
      ]
    },
    "html_parser": {
      "row": "doc.querySelectorAll('.torrent-list tbody tr')",
      "title": "row.querySelector('td:nth-child(2) a:last-child').textContent",
      "peers": "row.querySelector('td:nth-child(7)').textContent",
      "seeds": "row.querySelector('td:nth-child(6)').textContent",
      "size": "row.querySelector('td:nth-child(4)').textContent",
      "url": "row.querySelector('td:nth-child(3) a:nth-child(2)').getAttribute('href')"
    },
    "title_replacement": {
      ".": "",
      ":": "",
      "'": "",
      "&": "",
      "\"": "",
      "*": ""
    },
    "source_is_in_sub_page": false,
    "original_package": "SynclerScrapers - OpenScrapers"
  },
  "nyaa2": {
    "name": "Nyaa2",
    "enabled": true,
    "languages": [
      "en"
    ],
    "base_url": "https://nyaa.si",
    "fallback_urls": [],
    "response_type": "text",
    "separator": "+",
    "movie": {
      "query": "/?f=0&c=0_0&q={query}&s=seeders&o=desc",
      "keywords": "{title} {year}"
    },
    "episode": {
      "query": "/?f=0&c=0_0&q={query}&s=seeders&o=desc",
      "keywords": "{title} {episode}"
    },
    "season": {
      "query": "/?f=0&c=1_0&q={query}&s=seeders&o=desc",
      "keywords": [
        "{title} {seasonCode}",
        "{title} season"
      ]
    },
    "anime": {
      "query": "/?f=0&c=0_0&q={query}&s=seeders&o=desc",
      "keywords": [
        "{title} {absoluteNumber}",
        "{title} {episode}"
      ]
    },
    "html_parser": {
      "row": "doc.querySelectorAll('.table-responsive tbody > tr')",
      "title": "row.querySelector('td:nth-child(2) a').textContent",
      "peers": "row.querySelector('td:nth-child(7)').textContent.trim()",
      "seeds": "row.querySelector('td:nth-child(6)').textContent.trim()",
      "size": "row.querySelector('td:nth-child(4)').textContent.trim()",
      "url": "row.querySelector('td:nth-child(3) a:nth-child(2)').getAttribute('href')"
    },
    "title_replacement": {
      ".": "",
      ":": "",
      "'": "",
      "&": "",
      "\"": "",
      "*": ""
    },
    "source_is_in_sub_page": false,
    "original_package": "SynclerScrapers - OpenScrapers"
  },
  "limetorrents": {
    "name": "LimeTorrents",
    "enabled": true,
    "languages": [
      "en"
    ],
    "base_url": "https://www.limetorrents.pro",
    "fallback_urls": [
      "https://www.limetorrents.asia",
      "https://www.limetorrents.zone",
      "https://www.limetorrents.co",
      "https://www.limetor.com",
      "https://www.limetor.pro",
      "https://www.limetorrents.info",
      "https://limetorrents.unblockit.uno"
    ],
    "response_type": "text",
    "separator": "-",
    "movie": {
      "query": "/search/movies/{query}/seeds/1/",
      "keywords": "{title} {year}"
    },
    "episode": {
      "query": "/search/tv/{query}/seeds/1/",
      "keywords": [
        "{title} {episodeCode}",
        "{title} {year} {episodeCode}"
      ]
    },
    "season": {
      "query": "/search/tv/{query}/seeds/1/",
      "keywords": [
        "{title} {seasonCode}",
        "{title} season",
        "{title} {year} {seasonCode}",
        "{title} {year} season"
      ]
    },
    "anime": {
      "query": "/search/anime/{query}/seeds/1/",
      "keywords": [
        "{title} {absoluteNumber}",
        "{title} {episode}"
      ]
    },
    "html_parser": {
      "row": "doc.querySelectorAll('.table2 tbody tr:nth-child(n+2)')",
      "title": "row.querySelector('.tt-name').textContent",
      "peers": "row.querySelector('.tdseed').textContent.replace(',','')",
      "seeds": "row.querySelector('.tdleech').textContent.replace(',','')",
      "size": "row.querySelector('.tdnormal:nth-child(3)').textContent",
      "url": "row.querySelector('.tt-name a:nth-child(2)').getAttribute('href')"
    },
    "title_replacement": {
      ".": "",
      ":": "",
      "'": "",
      "&": "",
      "\"": "",
      "*": ""
    },
    "source_is_in_sub_page": true,
    "original_package": "SynclerScrapers - OpenScrapers"
  },
  "torrent9": {
    "name": "Torrent9",
    "enabled": true,
    "languages": [
      "fr"
    ],
    "base_url": "https://torrent9.to",
    "fallback_urls": [],
    "response_type": "text",
    "movie": {
      "query": "/search_torrent/{query}.html",
      "keywords": [
        "{title.fr} {year}",
        "{title} {year}"
      ]
    },
    "episode": {
      "query": "/search_torrent/{query}.html",
      "keywords": [
        "{title} {episodeCode}",
        "{title} {year} {episodeCode}"
      ]
    },
    "season": {
      "query": "/search_torrent/{query}.html",
      "keywords": [
        "{title} {seasonCode}",
        "{title} season",
        "{title} {year} {seasonCode}",
        "{title} {year} season"
      ]
    },
    "html_parser": {
      "row": "doc.querySelectorAll('.table-responsive tr')",
      "title": "row.querySelector('td:nth-child(1) a').textContent",
      "peers": "row.querySelector('td:nth-child(4)').textContent",
      "seeds": "row.querySelector('td:nth-child(3)').textContent",
      "size": "row.querySelector('td:nth-child(2)').textContent",
      "url": "row.querySelector('td:nth-child(1) a').getAttribute('href')"
    },
    "title_replacement": {
      ".": "",
      ":": "",
      "'": "",
      "&": "",
      "\"": "",
      "*": ""
    },
    "source_is_in_sub_page": true,
    "original_package": "SynclerScrapers - OpenScrapers"
  },
  "ilcorsaronero": {
    "name": "IlCorsaroNero",
    "enabled": true,
    "languages": [
      "it"
    ],
    "base_url": "http://ilcorsaronero.link",
    "fallback_urls": [
      "https://ilcorsaronero.pro",
      "https://ilcorsaronero.fun"
    ],
    "response_type": "text",
    "separator": "+",
    "movie": {
      "query": "/argh.php?search={query}",
      "keywords": "{title} {year}"
    },
    "episode": {
      "query": "/argh.php?search={query}",
      "keywords": [
        "{title.it} {episodeCode}",
        "{title.original} {episodeCode}",
        "{title.it} {year} {episodeCode}",
        "{title.original} {year} {episodeCode}"
      ]
    },
    "season": {
      "query": "/argh.php?search={query}",
      "keywords": [
        "{title.it} {seasonCode}",
        "{title.original} {seasonCode}",
        "{title.it} season",
        "{title.original} season",
        "{title.it} {year} {seasonCode}",
        "{title.original} {year} {seasonCode}",
        "{title.it} {year} season",
        "{title.original} {year} season"
      ]
    },
    "html_parser": {
      "row": "doc.querySelectorAll('tr.odd, tr.odd2')",
      "title": "row.querySelector('td:nth-child(2)').textContent",
      "peers": "row.querySelector('td:nth-child(7)').textContent",
      "seeds": "row.querySelector('td:nth-child(6)').textContent",
      "size": "row.querySelector('td:nth-child(3)').textContent",
      "url": "'magnet:?xt=urn:btih:'+ row.querySelector('input').value"
    },
    "title_replacement": {
      ".": "",
      ":": "",
      "'": "",
      "&": "",
      "\"": "",
      "*": ""
    },
    "source_is_in_sub_page": false,
    "original_package": "SynclerScrapers - OpenScrapers"
  },
  "1337x": {
    "name": "1337X",
    "enabled": true,
    "languages": [
      "en"
    ],
    "base_url": "https://1337x.to",
    "fallback_urls": [
      "https://1337x.st",
      "https://x1337x.ws",
      "https://x1337x.eu",
      "https://x1337x.se",
      "https://1337x.unblockit.uno"
    ],
    "response_type": "text",
    "separator": "+",
    "movie": {
      "query": "/category-search/{query}/Movies/1/",
      "keywords": "{title} {year}"
    },
    "episode": {
      "query": "/sort-category-search/{query}/TV/size/desc/1/",
      "keywords": [
        "{title} {episodeCode}",
        "{title} {year} {episodeCode}"
      ]
    },
    "season": {
      "query": "/sort-category-search/{query}/TV/size/desc/1/",
      "keywords": [
        "{title} {seasonCode}",
        "{title} season",
        "{title} {year} {seasonCode}",
        "{title} {year} season"
      ]
    },
    "anime": {
      "query": "/category-search/{query}/Anime/1/",
      "keywords": [
        "{title} {absoluteNumber}",
        "{title} {episode}"
      ]
    },
    "html_parser": {
      "row": "doc.querySelectorAll('tbody > tr')",
      "title": "row.querySelector('a:nth-child(2)').innerHTML",
      "peers": "row.querySelector('.leeches').innerHTML",
      "seeds": "row.querySelector('.seeds').innerHTML",
      "size": "row.querySelector('tbody > tr .size').textContent.split('B')[0] + 'B'",
      "url": "row.querySelector('a:nth-child(2)').getAttribute('href')"
    },
    "title_replacement": {
      ".": "",
      ":": "",
      "'": "",
      "&": "",
      "\"": "",
      "*": ""
    },
    "source_is_in_sub_page": true,
    "original_package": "SynclerScrapers - OpenScrapers"
  },
  "bitsearch": {
    "name": "BitSearch",
    "enabled": true,
    "languages": [
      "en"
    ],
    "base_url": "https://bitsearch.to",
    "response_type": "text",
    "separator": "+",
    "movie": {
      "query": "/search?q={query}&sort=seeders",
      "keywords": "{title} {year}"
    },
    "episode": {
      "query": "/search?q={query}&sort=seeders",
      "keywords": [
        "{title} {episodeCode}",
        "{title} {year} {episodeCode}"
      ]
    },
    "season": {
      "query": "/search?q={query}&sort=seeders",
      "keywords": [
        "{title} {seasonCode}",
        "{title} season",
        "{title} {year} {seasonCode}",
        "{title} {year} season"
      ]
    },
    "anime": {
      "query": "/search?q={query}&sort=seeders",
      "keywords": [
        "{title} {absoluteNumber}",
        "{title} {episode}"
      ]
    },
    "html_parser": {
      "row": "doc.querySelectorAll('.search-result')",
      "title": "row.querySelector('.title a').textContent",
      "peers": "row.querySelector('.stats div:nth-child(4)').textContent.trim().replace('.','').replace('K','00')",
      "seeds": "row.querySelector('.stats div:nth-child(3)').textContent.trim().replace('.','').replace('K','00')",
      "size": "row.querySelector('.stats div:nth-child(2)').textContent",
      "url": "row.querySelector('.dl-magnet').getAttribute('href')"
    },
    "title_replacement": {
      ".": "",
      ":": "",
      "'": "",
      "&": "",
      "\"": "",
      "*": ""
    },
    "source_is_in_sub_page": false,
    "original_package": "SynclerScrapers - OpenScrapers"
  },
  "oxtorrent": {
    "name": "OxTorrent",
    "enabled": true,
    "languages": [
      "fr"
    ],
    "base_url": "https://oxtorrent.pe",
    "fallback_urls": [],
    "response_type": "text",
    "separator": "%20",
    "movie": {
      "query": "/recherche/{query}",
      "keywords": "{title} {year}"
    },
    "episode": {
      "query": "/recherche/{query}",
      "keywords": [
        "{title} {episodeCode}",
        "{title} {year} {episodeCode}"
      ]
    },
    "season": {
      "query": "/recherche/{query}",
      "keywords": [
        "{title} {seasonCode}",
        "{title} season",
        "{title} {year} {seasonCode}",
        "{title} {year} season"
      ]
    },
    "anime": {
      "query": "/recherche/{query}",
      "keywords": [
        "{title} {absoluteNumber}",
        "{title} {episode}"
      ]
    },
    "html_parser": {
      "row": "doc.querySelectorAll('tbody > tr')",
      "title": "row.querySelector('a:nth-child(2)').innerHTML",
      "peers": "row.querySelector(':nth-child(4)').textContent.trim()",
      "seeds": "row.querySelector(':nth-child(3)').textContent.trim()",
      "size": "row.querySelector('td:nth-child(2)').textContent.trim()",
      "url": "row.querySelector('a:nth-child(2)').getAttribute('href')"
    },
    "title_replacement": {
      ".": "",
      ":": "",
      "'": "",
      "&": "",
      "\"": "",
      "*": ""
    },
    "source_is_in_sub_page": true,
    "original_package": "SynclerScrapers - OpenScrapers"
  },
  "pirateiro": {
    "name": "Pirateiro",
    "enabled": true,
    "languages": [
      "en"
    ],
    "base_url": "http://pirateiro.com",
    "fallback_urls": [
      "https://pirateiro.unblockit.uno"
    ],
    "response_type": "text",
    "movie": {
      "query": "/torrents/?c300=1&search={query}&orderby=tamanho",
      "keywords": "{title} {year}"
    },
    "episode": {
      "query": "/torrents/?search={query}&c700=1&qualityvideo=0&audiolanguage=0&subtitle=0&imdbrating=0",
      "keywords": [
        "{title} {episodeCode}",
        "{title} {year} {episodeCode}"
      ]
    },
    "season": {
      "query": "/torrents/?search={query}&c700=1&qualityvideo=0&audiolanguage=0&subtitle=0&imdbrating=0",
      "keywords": [
        "{title} {seasonCode}",
        "{title} season",
        "{title} {year} {seasonCode}",
        "{title} {year} season"
      ]
    },
    "anime": {
      "query": "/torrents/?search={query}&c100=1&c700=1&qualityvideo=0&audiolanguage=0&subtitle=0&imdbrating=0",
      "keywords": [
        "{title} {absoluteNumber}",
        "{title} {episode}"
      ]
    },
    "html_parser": {
      "row": "doc.querySelectorAll('tr.impar')",
      "title": "row.querySelector('a > b').textContent",
      "peers": "row.querySelector('td:nth-child(6) > b > font').textContent.replace(' ', '')",
      "seeds": "row.querySelector('b > font').textContent.replace(' ', '')",
      "size": "row.querySelector('td > font').textContent",
      "url": "row.querySelector('a.imagnet.icon16').getAttribute('href')"
    },
    "source_is_in_sub_page": false,
    "original_package": "SynclerScrapers - OpenScrapers"
  },
  "7torr": {
    "name": "SevenTorrents",
    "enabled": true,
    "languages": [
      "en"
    ],
    "base_url": "http://7torr.com",
    "fallback_urls": [
      "https://seventorrents.unblockit.uno"
    ],
    "response_type": "text",
    "separator": "+",
    "movie": {
      "query": "/search?q={query}",
      "keywords": "{title} {year}"
    },
    "episode": {
      "query": "/search?q={query}",
      "keywords": [
        "{title} {episodeCode}",
        "{title} {year} {episodeCode}"
      ]
    },
    "season": {
      "query": "/search?q={query}",
      "keywords": [
        "{title} {seasonCode}",
        "{title} season",
        "{title} {year} {seasonCode}",
        "{title} {year} season"
      ]
    },
    "anime": {
      "query": "/search?q={query}",
      "keywords": [
        "{title} {absoluteNumber}",
        "{title} {episode}"
      ]
    },
    "html_parser": {
      "row": "doc.querySelectorAll('tbody tr.row')",
      "title": "row.querySelector('td:nth-child(1) .rtitle a').textContent",
      "peers": "row.querySelector('td:nth-child(5)').textContent",
      "seeds": "row.querySelector('td:nth-child(4)').textContent",
      "size": "row.querySelector('td:nth-child(2)').textContent",
      "url": "row.querySelector('td:nth-child(6) a').getAttribute('href')"
    },
    "title_replacement": {
      ".": "",
      ":": "",
      "'": "",
      "&": "",
      "\"": "",
      "*": ""
    },
    "source_is_in_sub_page": false,
    "original_package": "SynclerScrapers - OpenScrapers"
  },
  "animetosho": {
    "name": "AnimeTosho",
    "enabled": true,
    "languages": [
      "en"
    ],
    "base_url": "https://animetosho.org",
    "fallback_urls": [],
    "response_type": "text",
    "separator": "+",
    "movie": {
      "query": "/search?q={query}",
      "keywords": "{title} {year}"
    },
    "episode": {
      "query": "/search?q={query}",
      "keywords": [
        "{title} {absoluteNumber}",
        "{title} {episode}"
      ]
    },
    "season": {
      "query": "/search?q={query}",
      "keywords": [
        "{title} {seasonCode}",
        "{title} season"
      ]
    },
    "anime": {
      "query": "/search?q={query}",
      "keywords": [
        "{title} {absoluteNumber}",
        "{title} {episode}"
      ]
    },
    "html_parser": {
      "row": "doc.querySelectorAll('.home_list_entry')",
      "title": "row.querySelector('.link a').textContent",
      "peers": "row.querySelector('span:nth-child(5)').textContent.match(/\\d+/g)[1]",
      "seeds": "row.querySelector('span:nth-child(5)').textContent.match(/\\d+/g)[0]",
      "size": "row.querySelector('.size').textContent",
      "url": "row.querySelector('.links a:nth-child(4)').getAttribute('href')"
    },
    "title_replacement": {
      ".": "",
      ":": "",
      "'": "",
      "&": "",
      "\"": "",
      "*": ""
    },
    "source_is_in_sub_page": false,
    "original_package": "SynclerScrapers - OpenScrapers"
  },
  "torlock": {
    "name": "TorLock",
    "enabled": true,
    "languages": [
      "en"
    ],
    "base_url": "https://www.torlock.com",
    "fallback_urls": [
      "https://torlock.unblockit.uno"
    ],
    "response_type": "text",
    "separator": "-",
    "movie": {
      "query": "/movie/torrents/{query}.html?",
      "keywords": "{title} {year}"
    },
    "episode": {
      "query": "/television/torrents/{query}.html?",
      "keywords": [
        "{title} {episodeCode}",
        "{title} {year} {episodeCode}",
        "{title} {absoluteNumber}",
        "{title} {episode}"
      ]
    },
    "season": {
      "query": "/television/torrents/{query}.html?",
      "keywords": [
        "{title} {seasonCode}",
        "{title} season",
        "{title} {year} {seasonCode}",
        "{title} {year} season"
      ]
    },
    "anime": {
      "query": "/anime/torrents/{query}.html?",
      "keywords": [
        "{title} {absoluteNumber}",
        "{title} {episode}"
      ]
    },
    "html_parser": {
      "row": "doc.querySelectorAll('tbody tr')",
      "title": "row.querySelector('td:nth-child(1) a b').textContent",
      "peers": "row.querySelector('.tdl').textContent",
      "seeds": "row.querySelector('.tul').textContent",
      "size": "row.querySelector('.ts').textContent",
      "url": "row.querySelector('td:nth-child(1) a').getAttribute('href')"
    },
    "title_replacement": {
      ".": "",
      ":": "",
      "'": "",
      "&": "",
      "\"": "",
      "*": ""
    },
    "source_is_in_sub_page": true,
    "original_package": "SynclerScrapers - OpenScrapers"
  },
  "anidex": {
    "name": "AniDex",
    "enabled": true,
    "languages": [
      "en"
    ],
    "base_url": "https://anidex.info",
    "fallback_urls": [],
    "response_type": "text",
    "separator": "+",
    "movie": {
      "query": "/?q={query}",
      "keywords": "{title} {year}"
    },
    "episode": {
      "query": "/?q={query}",
      "keywords": [
        "{title} {absoluteNumber}",
        "{title} {episode}"
      ]
    },
    "season": {
      "query": "/?q={query}",
      "keywords": [
        "{title} {seasonCode}",
        "{title} season"
      ]
    },
    "anime": {
      "query": "/?q={query}",
      "keywords": [
        "{title} {absoluteNumber}",
        "{title} {episode}"
      ]
    },
    "html_parser": {
      "row": "doc.querySelectorAll('tbody tr')",
      "title": "row.querySelector('td:nth-child(3) a').textContent",
      "peers": "row.querySelector('span:nth-child(10)').textContent",
      "seeds": "row.querySelector('td:nth-child(9)').textContent",
      "size": "row.querySelector('td:nth-child(7)').textContent",
      "url": "row.querySelector('td:nth-child(6) a').getAttribute('href')"
    },
    "title_replacement": {
      ".": "",
      ":": "",
      "'": "",
      "&": "",
      "\"": "",
      "*": ""
    },
    "source_is_in_sub_page": false,
    "original_package": "SynclerScrapers - OpenScrapers"
  },
  "btdb": {
    "name": "BTDB",
    "enabled": true,
    "languages": [
      "en"
    ],
    "base_url": "https://btdb.eu",
    "fallback_urls": [],
    "response_type": "text",
    "separator": "%20",
    "movie": {
      "query": "/search/{query}/0/?sort=popular",
      "keywords": "{title} {year}"
    },
    "episode": {
      "query": "/search/{query}/0/?sort=popular",
      "keywords": "{title} {episodeCode}"
    },
    "season": {
      "query": "/search/{query}/0/?sort=popular",
      "keywords": [
        "{title} {seasonCode}",
        "{title} season"
      ]
    },
    "anime": {
      "query": "/search/{query}/0/?sort=popular",
      "keywords": "{title} {absoluteNumber}"
    },
    "html_parser": {
      "row": "doc.querySelectorAll('.card-body .media')",
      "title": "row.querySelector('.media-body .item-title').textContent",
      "peers": "row.querySelector('.item-meta-info small:nth-child(4) strong').textContent",
      "seeds": "row.querySelector('.item-meta-info small:nth-child(3) strong').textContent",
      "size": "row.querySelector('.item-meta-info small:nth-child(1) strong').textContent",
      "url": "row.querySelector('.media-right a:nth-child(1)').getAttribute('href')"
    },
    "title_replacement": {
      ".": "",
      ":": "",
      "'": "",
      "&": ""
    },
    "source_is_in_sub_page": false,
    "original_package": "Syncler.ml - Providers"
  },
  "solidtorrents": {
    "name": "SolidTorrents",
    "enabled": true,
    "languages": [
      "en"
    ],
    "base_url": "https://solidtorrents.net/api/v1/search?q={query}&category=video&sort=seeders",
    "fallback_urls": [],
    "response_type": "json",
    "separator": "%20",
    "movie": {
      "query": "",
      "keywords": "{title} {year}"
    },
    "episode": {
      "query": "",
      "keywords": "{title} {episodeCode}"
    },
    "season": {
      "query": "",
      "keywords": [
        "{title} {seasonCode}",
        "{title} season"
      ]
    },
    "anime": {
      "query": "",
      "keywords": "{title} {absoluteNumber}"
    },
    "json_format": {
      "results": "results",
      "url": "magnet",
      "title": "title",
      "seeds": "swarm.seeders",
      "peers": "swarm.leechers",
      "size": "size",
      "hash": "info_hash"
    },
    "title_replacement": {
      ".": "",
      ":": "",
      "'": "",
      "&": ""
    },
    "original_package": "Syncler.ml - Providers"
  },
  "yourbittorrent": {
    "name": "YourBittorent",
    "enabled": true,
    "languages": [
      "en"
    ],
    "base_url": "https://yourbittorrent.com",
    "fallback_urls": [
      "https://yourbittorrent2.com"
    ],
    "response_type": "text",
    "movie": {
      "keywords": "{title} {year}",
      "query": "/?v=&c=1&q={query}"
    },
    "episode": {
      "keywords": "{title} {episodeCode}",
      "query": "/?v=&c=3&q={query}"
    },
    "season": {
      "keywords": "{title} {seasonCode}",
      "query": "/?v=&c=3&q={query}"
    },
    "anime": {
      "keywords": "{title} {episode}",
      "query": "/?v=&c=&q={query}"
    },
    "html_parser": {
      "row": "doc.querySelectorAll('tr.table-default')",
      "title": "row.querySelector('td:nth-child(2)').textContent",
      "peers": "row.querySelector('td:nth-child(6)').textContent",
      "seeds": "row.querySelector('td:nth-child(7)').textContent",
      "size": "row.querySelector('td:nth-child(4)').textContent",
      "url": "row.querySelector('td:nth-child(3) a:nth-child(3)').getAttribute('href')"
    },
    "title_replacement": {
      "&": "",
      "'": "",
      ".": "",
      ":": ""
    },
    "original_package": "Syncler.ml - Providers"
  },
  "corsarored": {
    "name": "Corsaro.Red",
    "enabled": false,
    "languages": [
      "it"
    ],
    "base_url": "https://corsaro.red/api/search",
    "method": "POST",
    "http_method": "POST",
    "response_type": "json",
    "movie": {
      "query": "{\"term\":\"{query}\",\"category\":\"2\"}",
      "keywords": [
        "{title.it} {year}",
        "{title.original} {year}"
      ]
    },
    "episode": {
      "query": "{\"term\":\"{query}\",\"category\":\"1\"}",
      "keywords": [
        "{title.it} {episodeCode}",
        "{title.original} {episodeCode}"
      ]
    },
    "season": {
      "query": "{\"term\":\"{query}\",\"category\":\"1\"}",
      "keywords": [
        "{title.it} {seasonCode}",
        "{title.original} {seasonCode}"
      ]
    },
    "anime": {
      "query": "{\"term\":\"{query}\",\"category\":\"7\"}",
      "keywords": [
        "{title.it} {episodeCode}",
        "{title.original} {episodeCode}"
      ]
    },
    "json_format": {
      "results": "results",
      "url": "magnet",
      "title": "title",
      "seeds": "seeders",
      "peers": "leechers",
      "size": "size",
      "quality": "description"
    },
    "original_package": "Aki07 - Unified"
  }
}
