#  创建工具类顺序

1. 看原始属性是否支持RawRepresentable(满足@AppStorage/@SceneStorage的需求)。如果不支持，支持一下。
    注：有些属性遵守RawRepresentable但是仍然不支持@AppStorage的初始化，如HorizontalEdge
2. 如果不支持原始属性，或有特殊需求(如需要设置nil/none),或无法直接使用AppStorage，自定义struct进行封装
