import React from 'react'
import { Parallax, ParallaxLayer } from '@react-spring/parallax'
import Text from './Text'
import LocationSender from './LocationSender';


function App() {
  return (
    <div className="App">
      <LocationSender />
    <Parallax pages={2} className="relative block h-[1000px] z-10 top-0 left-0">
      <ParallaxLayer offset={0} speed={0.25}>
        <div className="h-[1000px] bg-bc bg-[auto_1038px] bg-repeat-x w-full layer ly bg-bg" ></div>
      </ParallaxLayer>
      <ParallaxLayer offset={0} speed={0.3}>
        <div className="h-[1000px] bg-bc bg-[auto_1038px] bg-repeat-x w-full layer ly bg-mount" ></div>
      </ParallaxLayer>
      <ParallaxLayer offset={0} speed={-0.1}>
        <div className="h-[1000px] bg-bc bg-[auto_1038px] bg-repeat-x w-full layer ly bg-logo" ></div>
      </ParallaxLayer>
      <ParallaxLayer offset={0} speed={0.3}>
        <div className="h-[1000px] bg-bc bg-[auto_1038px] bg-repeat-x w-full layer ly bg-j1" ></div>
      </ParallaxLayer>
      <ParallaxLayer offset={0} speed={0.35}>
        <div className="h-[1000px] bg-bc bg-[auto_1038px] bg-repeat-x w-full layer ly bg-j2" ></div>
      </ParallaxLayer>
      <ParallaxLayer offset={0} speed={0.5}>
        <div className="h-[1000px] bg-bc bg-[auto_1038px] bg-repeat-x w-full layer ly bg-j3" ></div>
      </ParallaxLayer>
      <ParallaxLayer offset={0} speed={0.45}>
        <div className="h-[1000px] bg-bc bg-[auto_1038px] bg-repeat-x w-full layer ly  bg-j4" ></div>
      </ParallaxLayer>
      <ParallaxLayer offset={0} speed={0.40}>
        <div className="h-[1000px] bg-bc bg-[auto_1038px] bg-repeat-x w-full layer ly bg-man" ></div>
      </ParallaxLayer>
      <ParallaxLayer offset={0} speed={0.35}>
        <div className="h-[1000px] bg-bc bg-[auto_1038px] bg-repeat-x w-full layer ly bg-j5" ></div>
      </ParallaxLayer>
      <ParallaxLayer offset={1} speed={0.25}>
        <Text />
      </ParallaxLayer>
    </Parallax>
  </div>
  )
}

export default App
