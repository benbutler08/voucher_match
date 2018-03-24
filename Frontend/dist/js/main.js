let links = $('.navbar__links')
let close = $('.close')

function $(selection) {
  return document.querySelector(selection)
}

document.addEventListener('DOMContentLoaded', () => {
  getArtist()
  // getTweets()
  getIGFeed()
})

$('.navbar__hamburger').addEventListener('click', () => {
  links.className = 'navbar__links open'
  close.style.display = 'initial'
})

close.addEventListener('click', () => {
  links.classList.remove('open')
  close.style.display = 'none'
})

document.querySelectorAll('.box__selector').forEach((item, i) => item.addEventListener('click', () => {
  // item.className = 'active'
  console.log(item)
}))

function getArtist() {
  fetch('./data/artists.json')
    .then(res => res.json())
    .then(data => event(data))
    .catch(err => console.log(err))
}

/* function getTweets() {
  fetch('./data/twitter.json')
    .then(res => res.json())
    .then(data => tweets(data))
    .catch(err => console.log(err))
} */

function getIGFeed() {
  fetch('https://igapi.ga/hotnewhiphop/media?count=10')
    .then(res => res.json())
    .then(IGFeed => instagram(IGFeed.posts))
    .catch(err => console.log(err))
}

function event(artists) {
  function eventLayout(artistInfo) {
    let { name, imgName, tour, date, day } = artistInfo

    let layout = `<div class="upcoming__event row">
            <div class="event__img" style="background: url('../img/${imgName}.jpg') center no-repeat;" alt="${name}" ></div>
            <div class="event__info">
                <h3 class="info__artist">${name}</h3>
                <h4 class="info__tour">${tour}</h4>
            </div>
            <div class="event__date">
                <h4>${date}</h4>
                <h4 class="day">${day}</h4>
            </div>
            <button class="event__button">
                <i class="fa fa-ticket" aria-hidden="true"> Buy Tickets </i>
            </button>
           </div>`

    return ($('.wrapper').innerHTML += layout)
  }

  function artistsLoop() {
    artists.map(artistInfo => {
      eventLayout(artistInfo)
    })
  }

  artistsLoop()
}

/* function tweets (tweets) {
  function tweetLayout(tweetInfo) {
    // console.log(tweetInfo)

    let layout = `<div class="stream__wrapper">
      <h2 class="stream__follow">
          <i class="fa fa-twitter" aria-hidden="true"></i>
          <span class="stream__social-handler">
              <span class="at">@</span>${tweetInfo.handler}</span>
      </h2>
      <p></p>
      <div class="stream__action"></div>
  </div>`

    return ($('.stream__stream').innerHTML = layout)
  }

  function tweetLoop() {
    tweets.map(tweetInfo => {
      tweetLayout(tweetInfo)
    })
  }

  tweetLoop()
} */

function instagram(igFeed) {
  function igLayout(igInfo) {
    // console.log(igInfo)
    let { thumbnail_src: thumbImg } = igInfo
    let div = document.createElement('div')
    div.className = 'instagram__stream'
    $('.stream__stream').appendChild(div)

    let layout = `
        <img src="${thumbImg}" alt="" class="stream__image"/>`

    return (div.innerHTML += layout)
  }

  function igLoop() {
    igFeed.map(igInfo => {
      igLayout(igInfo)
    })
  }

  igLoop()
}
