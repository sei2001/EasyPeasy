// The MIT License (MIT) - Copyright (c) 2016 Carlos Vidal
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

#if !(os(iOS) || os(tvOS))
    
import AppKit

/// Alias of NSView
public typealias View = NSView

/**
     Item protocol extension implementing some convenience properties
 */
internal extension Item {
    
    /// Owning `NSView` for the current `Item`. The concept varies
    /// depending on the class conforming the protocol
    internal var owningView: View? {
        get {
            // Owning view for `NSView` is the `superview`
            if let view = self as? View {
                return view.superview
            }
            
            return nil
        }
    }
    
}

/**
     Extension making `NSView` conform the `Item` protocol and
     therefore inherit the extended methods and properties
 */
extension NSView: Item { }
    
#endif
