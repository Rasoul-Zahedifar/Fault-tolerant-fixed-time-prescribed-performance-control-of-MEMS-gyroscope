<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a name="readme-top"></a>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
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


<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#Reference">Reference</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

<div align="justify"> Introducing a fault-tolerant fixed-time prescribed performance adaptive backstepping controller for MEMS gyroscopes, this research breaks new ground by addressing uncertainties, actuator faults, and offering user-adjustable convergence rates. The controller's robustness is demonstrated in severe disturbance conditions and faulty actuators, showcasing superior fixed-time convergence rates compared to finite-time methods. This novel approach fills a gap in MEMS gyroscope literature, providing industry-ready, user-adjustable systems resilient to uncertainties and faults. While the proposed algorithm shows promise, future work will address complexity and nonlinearities for further optimization. You can see the schematic of the MEMS gyroscope system below. </div>


![comgit](https://github.com/Rasoul-Zahedifar/Fault-tolerant-fixed-time-prescribed-performance-control-of-MEMS-gyroscope/blob/main/MEMS%20Gyroscope.png)


<div align="justify"> In this research, a fault-tolerant fixed-time prescribed performance adaptive backstepping controller is developed for MEMS gyroscopes. Two case studies illustrate the robustness of the controller in uncertain conditions and highlight its superior fixed-time convergence rate compared to existing methods with finite-time rates. The user-adjustable convergence time and performance parameters make the proposed controller a valuable contribution to the MEMS gyroscope field. However, challenges like computational complexity and unaddressed actuator nonlinearities remain, paving the way for future enhancements and refinements. Below, a representation of the block diagram is depicted. </div>


![comgit](https://github.com/Rasoul-Zahedifar/Fault-tolerant-fixed-time-prescribed-performance-control-of-MEMS-gyroscope/blob/main/Block%20Diagram.png)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

In order to apply the codes, you may need to follow the steps below:


<!-- PREREQUISITES -->
### Prerequisites

<div align="justify"> You need to install MATLAB and Simulink Version 2022b or newer ones. If you are using an older version of MATLAB, please let me know at rasoul.zahedifar75@gmail.com to provide you with a save as compatible to your version. </div>



<!-- INSTALLATION -->
### Installation

<div align="justify"> You need to run the file "runner" in each case study. Please notice that the controller gains could be chosen in this file too. </div>


<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Usage

<div align="justify"> The case study 1 is in the presence of extremely harsh while
uncertain actuator faults and disturbance and case study 2 is a comparison between fixed-time and finite-time analysis. The plots are MATLAB fig files, for openning the file, drag it to your MATLAB. The MATLAB fig files are vectorized where the more you zoom in to the figure, the more details you could see without loosing the quality of the figure. Also, a pdf file is provided in Notes which is the procedure on how to derive the equations and design the controller inputs. You can find out about these scenarios as they are expressed completely in the paper of this research, titled same as this repository's title. </div>

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## Contributing

<div align="justify"> Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are greatly appreciated.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request </div>

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Rasoul Zahedifar - rasoul.zahedifar75@gmail.com,
Seyed Mohammadreza Esmaeili - smohammadreza.esmaeili@gmail.com,
Ali Keymasi Khalaji - keymasi@khu.ac.ir

Github Link: [https://github.com/Rasoul-Zahedifar/Fault-tolerant-fixed-time-prescribed-performance-control-of-MEMS-gyroscope](https://github.com/Rasoul-Zahedifar/Fault-tolerant-fixed-time-prescribed-performance-control-of-MEMS-gyroscope)

Journal Link: [https://ietresearch.onlinelibrary.wiley.com/Fault-tolerant-fixed-time-prescribed-performance-control-of-MEMS-gyroscope](https://ietresearch.onlinelibrary.wiley.com/doi/full/10.1049/cth2.12484)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- REFERENCE -->
## Reference

If you are interested in this work, please cite:

```
@ARTICLE{
  authors={Esmaeili, Seyed Mohammadreza and Zahedifar, Rasoul and Keymasi Khalaji, Ali},
  journal={IET Control Theory & Applications},
  publisher={John Wiley & Sons, Inc}
  title={Fault-tolerant fixed-time prescribed performance control of MEMS gyroscope}, 
  year={2023},
  volume={17},
  issue={11},
  pages={1509-1521},
  doi={10.1049/cth2.12484}
  }
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/Rasoul-Zahedifar/Fault-tolerant-fixed-time-prescribed-performance-control-of-MEMS-gyroscope.svg?style=for-the-badge
[contributors-url]: https://github.com/Rasoul-Zahedifar/Fault-tolerant-fixed-time-prescribed-performance-control-of-MEMS-gyroscope/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Rasoul-Zahedifar/Fault-tolerant-fixed-time-prescribed-performance-control-of-MEMS-gyroscope.svg?style=for-the-badge
[forks-url]: https://github.com/Rasoul-Zahedifar/Fault-tolerant-fixed-time-prescribed-performance-control-of-MEMS-gyroscope/network/members
[stars-shield]: https://img.shields.io/github/stars/Rasoul-Zahedifar/Fault-tolerant-fixed-time-prescribed-performance-control-of-MEMS-gyroscope.svg?style=for-the-badge
[stars-url]: https://github.com/Rasoul-Zahedifar/Fault-tolerant-fixed-time-prescribed-performance-control-of-MEMS-gyroscope/stargazers
[issues-shield]: https://img.shields.io/github/issues/Rasoul-Zahedifar/Fault-tolerant-fixed-time-prescribed-performance-control-of-MEMS-gyroscope.svg?style=for-the-badge
[issues-url]: https://github.com/Rasoul-Zahedifar/Fault-tolerant-fixed-time-prescribed-performance-control-of-MEMS-gyroscope/issues
[license-shield]: https://img.shields.io/github/license/Rasoul-Zahedifar/Fault-tolerant-fixed-time-prescribed-performance-control-of-MEMS-gyroscope.svg?style=for-the-badge
[license-url]: https://github.com/Rasoul-Zahedifar/Fault-tolerant-fixed-time-prescribed-performance-control-of-MEMS-gyroscope/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/rasoul-zahedifar