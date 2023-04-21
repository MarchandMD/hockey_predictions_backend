<!-- Improved compatibility of back to top link: See: https://github.com/marchandmd/hockey_predictions_backend/pull/73 -->

<a name="readme-top"></a>

<!--
*** Thanks for checking out the hockey_predictions_backend. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<!-- PROJECT LOGO -->
<br />
<div align="center">

  <h1 align="center">hockey_predictions_backend</h1>

  <p align="center">
    API only Rails application built to supply information from NHL API to front end via RESTful conventions using a Service-Oriented Architecture.
<br />
      Exposes endpoints to facilitate design of a front end interface for a game that allows users to predict the outcome of hockey games, as well as events that occur during a game.
    <br />
    <a href="https://github.com/marchandmd/hockey_predictions_backend"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <!-- <a href="https://github.com/marchandmd/hockey_predictions_backend">View Demo</a> -->
    ·
    <a href="https://github.com/marchandmd/hockey_predictions_backend/issues">Report Bug</a>
    ·
    <a href="https://github.com/marchandmd/hockey_predictions_backend/issues">Request Feature</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>

<!-- ABOUT THE PROJECT -->

## About The Project

hockey_predictions will be a game to allow real-time predictions of nhl hockey games.

Users sign in using their Google account, and then are able to make predictions about the outcome of a specific game.

After an NHL game is finished, the user will be awarded points and then be placed on the leaderboard.

Future iterations will include additional events to predict prior to the beginning of each period.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

-   [![Ruby][ruby.com]][ruby-url]
-   [![Rspec][rspec.com]][rspec-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## Getting Started

### Prerequisites

ruby v 2.7.4
rails v 5.2.8

### Installation

1. Clone the repo
    ```sh
    git clone https://github.com/marchandmd/hockey_predictions_backend.git
    ```
2. Install packages
    ```sh
    bundle
    ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->

## Usage

This application will be live. Stay tuned.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ROADMAP -->

## Roadmap

- [ ] establish connection with NHL through a service, and expose the list of games for the current calendar day

See the [open issues](https://github.com/marchandmd/hockey_predictions_backend/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## License

MIT

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->

## Contact

Michael Marchand - MichaelDavidMarchand@gmail.com

Project Link: [https://github.com/MarchandMD/hockey_predictions_backend](https://github.com/marchandmd/hockey_predictions_backend)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->

## Acknowledgments

Use this space to list resources you find helpful and would like to give credit to. I've included a few of my favorites to kick things off!

-   [Choose an Open Source License](https://choosealicense.com)
-   [GitHub Emoji Cheat Sheet](https://www.webpagefx.com/tools/emoji-cheat-sheet)
-   [Img Shields](https://shields.io)
-   [GitHub Pages](https://pages.github.com)
-   [Rubocop](https://rubocop.org/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/marchandmd/hockey_predictions_backend.svg?style=for-the-badge
[contributors-url]: https://github.com/marchandmd/hockey_predictions_backend/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/marchandmd/hockey_predictions_backend.svg?style=for-the-badge
[forks-url]: https://github.com/marchandmd/hockey_predictions_backend/network/members
[stars-shield]: https://img.shields.io/github/stars/marchandmd/hockey_predictions_backend.svg?style=for-the-badge
[stars-url]: https://github.com/marchandmd/hockey_predictions_backend/stargazers
[issues-shield]: https://img.shields.io/github/issues/marchandmd/hockey_predictions_backend.svg?style=for-the-badge
[issues-url]: https://github.com/marchandmd/hockey_predictions_backend/issues
[license-shield]: https://img.shields.io/github/license/marchandmd/hockey_predictions_backend.svg?style=for-the-badge
[license-url]: https://github.com/marchandmd/hockey_predictions_backend/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/marchandmd1
[product-screenshot]: images/screenshot.png
[bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[bootstrap-url]: https://getbootstrap.com
[ruby.com]: https://img.shields.io/badge/ruby-v2.7.4-red
[ruby-url]: https://ruby-doc.org/core-2.7.2/
[rspec.com]: https://img.shields.io/badge/rspec-v3.10-success
[rspec-url]: https://rspec.info/documentation/
